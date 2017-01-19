# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( frontend/checkout.css )
Rails.application.config.assets.precompile += %w( frontend/thankyou.css )
Rails.application.config.assets.precompile += %w( frontend/checkout_add.css )
Rails.application.config.assets.precompile += %w( frontend/checkout.js )
Rails.application.config.assets.precompile += %w( frontend/twine.min.js )
Rails.application.config.assets.precompile += %w( frontend/money-helper.js )
Rails.application.config.assets.precompile += %w( frontend/jquery.creditCardValidator.js )
Rails.application.config.assets.precompile += %w( backend/jquery.core.js )
Rails.application.config.assets.precompile += %w( backend/jquery.app.js )
Rails.application.config.assets.precompile += %w( backend/auto-slug.js )