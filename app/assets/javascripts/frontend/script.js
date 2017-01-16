//var url_base = 'http://localhost:3000/';
var url_base = 'http://www.e-foodlover.com/';

$(document).ready(function(){
    ! function($) {
        $(function() {
            $('body').on('touchstart.dropdown', '.dropdown-menu', function(e) {
                e.stopPropagation();
            });
            $(document.body).on('click', '[data-toggle="dropdown"]', function() {
                if (!$(this).parent().hasClass('open') && this.href && this.href != '#') {
                    window.location.href = this.href;
                }
            });
        })
    }(window.jQuery);
    $('#btn_tim_kiem').click(function(){
        var key = $('#tu_khoa').val();
        if(!key.trim()){
            $('#tu_khoa').val('');
            return false;
        }
    });
});

function checkDate(day,month,year) {
    var date = new Date(year,month-1,day);
    if (date.getFullYear() == year && date.getMonth() + 1 == month && date.getDate() == day) {
        return true
    }
    return false
}

function checkPhone(phone) {
    var filter = /^[0-9\-\+]{10,12}$/;
    return filter.test(phone);
}

function checkEmail(email) {
    var filter = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return filter.test(email);
}

function formatCurrency(number){
    return number.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,")+'₫';
}

function changeFormatCurrency(cost){
    return Number(cost.replace(/[^0-9\.]+/g,""));
}

function showRecoverPasswordFormClient() {
    document.getElementById('recover_password_client').style.display = 'block';
    document.getElementById('customer_login_client').style.display = 'none';
}

function hideRecoverPasswordFormClient() {
    document.getElementById('recover_password_client').style.display = 'none';
    document.getElementById('customer_login_client').style.display = 'block';
}

// Allow deep linking to the recover password form
if (window.location.hash == '#recover_client') {
    showRecoverPasswordFormClient()
}

function goRegisterForm() {
    $('input[name=email_client_register]').val('');
    $('input[name=password_client_register]').val('');
    $('input[name=fullname_client_register]').val('');
    $('input[name=gender_client_register]:checked').prop('checked', false);
    $('[name=day_client_register]').val('None');
    $('[name=month_client_register]').val('None');
    $('[name=year_client_register]').val('None');
    $('input[name=address_client_register]').val('');
    $('[name=city_client_register]').val('None');
    $('input[name=phone_client_register]').val('');
    $('#login-form').hide();
    $('#register-form').show();
    $('#error_display').hide();
    $('#success_display').hide();
}

function goLoginForm() {
    $('#login-form').show();
    $('#register-form').hide();
}

function goRegisterFormSeller() {
    $('input[name=email_seller_register]').val('');
    $('input[name=password_seller_register]').val('');
    $('input[name=fullname_seller_register]').val('');
    $('input[name=gender_seller_register]:checked').prop('checked', false);
    $('[name=day_seller_register]').val('None');
    $('[name=month_seller_register]').val('None');
    $('[name=year_seller_register]').val('None');
    $('input[name=address_seller_register]').val('');
    $('[name=city_seller_register]').val('None');
    $('input[name=phone_seller_register]').val('');
    $('#login-form-seller').hide();
    $('#register-form-seller').show();
    $('#error_display_seller').hide();
    $('#success_display_seller').hide();
}

function goLoginFormSeller() {
    $('#login-form-seller').show();
    $('#register-form-seller').hide();
}