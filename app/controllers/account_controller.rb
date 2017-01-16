class AccountController < ApplicationController
  def index

  end

  def create_client_auth
    auth = env["omniauth.auth"]
    User.new.create_client(auth)
    account = Account.from_omniauth(auth)
    session[:email] = account.email
    session[:role_id] = account.role_id
    cookies[:email] = { :value => account.email, :expires => Time.now + 24*3600}
    cookies[:role_id] = { :value => account.role_id, :expires => Time.now + 24*3600}
    cookies[:provider] = { :value => account.provider, :expires => Time.now + 24*3600}
    redirect_to root_path
  end

  def create
    if ApplicationHelper.check_email?(params[:email]) and AccountHelper.check_date?(params[:date_of_birth]) and params[:password].length >= 6 and params[:role_id].to_i <= 3 and params[:role_id].to_i >= 1 and params[:fullname] and params[:gender]
      error = false
      if params[:phone] != ''
        if !ApplicationHelper.check_phone?(params[:phone])
          error = true
        end
      end

      if error
        respond_to do |format|
          response = { :status => "501", :message => "fail" }
          format.json  { render :json => response }
        end
      else
        object_user = User.new
        object_user.email = params[:email]
        object_user.fullname = params[:fullname]
        object_user.gender = params[:gender]
        object_user.date_of_birth = params[:date_of_birth]
        object_user.address = params[:address]
        object_user.city = params[:city]
        object_user.phone_number = params[:phone]
        password = BCrypt::Password.create(params[:password])
        role_id = params[:role_id]

        if User.exists?(email: object_user.email)
          if Account.exists?(email: object_user.email, provider: 'e-foodlover', role_id: role_id.to_i, status: true)
            respond_to do |format|
              response = { :status => "501", :message => "exist" }
              format.json  { render :json => response }
            end
          else
            user = User.find_by(email: object_user.email)
            user.fullname = object_user.fullname
            user.gender = object_user.gender
            user.date_of_birth = object_user.date_of_birth
            user.address = object_user.address
            user.city = object_user.city
            user.phone_number = object_user.phone_number

            account = Account.new
            account.provider = 'e-foodlover'
            account.email = object_user.email
            account.role_id = role_id.to_i
            account.name = object_user.fullname
            account.status = true
            account.password = password

            if user.save! and account.save!
              if role_id.to_i == 2
                income = Income.new
                income.user_id = user.user_id
                income.amount = 0
                income.save!
              end
              respond_to do |format|
                response = { :status => "200", :message => "success" }
                format.json  { render :json => response }
              end
            else
              respond_to do |format|
                response = { :status => "501", :message => "fail" }
                format.json  { render :json => response }
              end
            end
          end
        else
          if Account.exists?(email: object_user.email, provider: 'e-foodlover', role_id: role_id.to_i, status: true)
            respond_to do |format|
              response = { :status => "501", :message => "exist" }
              format.json  { render :json => response }
            end
          else
            user = User.new
            user.fullname = object_user.fullname
            user.gender = object_user.gender
            user.date_of_birth = object_user.date_of_birth
            user.address = object_user.address
            user.city = object_user.city
            user.phone_number = object_user.phone_number
            user.email = object_user.email

            account = Account.new
            account.provider = 'e-foodlover'
            account.email = object_user.email
            account.role_id = role_id.to_i
            account.name = object_user.fullname
            account.status = true
            account.password = password

            if user.save! and account.save!
              if role_id.to_i == 2
                income = Income.new
                income.user_id = user.user_id
                income.amount = 0
                income.save!
              end
              respond_to do |format|
                response = { :status => "200", :message => "success" }
                format.json  { render :json => response }
              end
            else
              respond_to do |format|
                response = { :status => "501", :message => "fail" }
                format.json  { render :json => response }
              end
            end
          end
        end
      end
    else
      respond_to do |format|
        response = { :status => "501", :message => "fail" }
        format.json  { render :json => response }
      end
    end
  end

  def login
    if ApplicationHelper.check_email?(params[:email]) and params[:password].length >= 6 and params[:role_id].to_i <= 3 and params[:role_id].to_i >= 1
      account = Account.find_by(email: params[:email], provider: 'e-foodlover', role_id: params[:role_id].to_i)
      if account
        password = BCrypt::Password.new(account.password)
        if password == params[:password]
          if account.status == false
            respond_to do |format|
              response = { :status => "502", :message => "active" }
              format.json  { render :json => response }
            end
          else
            session[:email] = account.email
            session[:role_id] = account.role_id
            cookies[:email] = { :value => account.email, :expires => Time.now + 24*3600}
            cookies[:role_id] = { :value => account.role_id, :expires => Time.now + 24*3600}
            cookies[:provider] = { :value => account.provider, :expires => Time.now + 24*3600}
            if account.role_id == 3
              redirect_to :back
            elsif account.role_id == 2
              redirect_to '/admin/thanh-vien/quan-ly-hoa-don'
            else
              redirect_to '/admin/quan-tri/quan-ly-tai-khoan'
            end
          end
        else
          respond_to do |format|
            response = { :status => "501", :message => "fail" }
            format.json  { render :json => response }
          end
        end
      else
        respond_to do |format|
          response = { :status => "501", :message => "fail" }
          format.json  { render :json => response }
        end
      end
    else
      respond_to do |format|
        response = { :status => "501", :message => "fail" }
        format.json  { render :json => response }
      end
    end
  end

  def destroy
    session[:email] = nil
    session[:role_id] = nil
    cookies.delete :email
    cookies.delete :role_id
    cookies.delete :provider
    redirect_to :back
  end

  def edit_status
    account = Account.new.get_account_by_id(params[:account_id])
    if account.update_attributes(status: params[:status])
      respond_to do |format|
        response = { :status => "200", :message => "success" }
        format.json  { render :json => response }
      end
    else
      respond_to do |format|
        response = { :status => "501", :message => "fail" }
        format.json  { render :json => response }
      end
    end
  end
end
