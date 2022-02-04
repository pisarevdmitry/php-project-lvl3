start:
	php artisan serve --host 0.0.0.0

install:
	composer install	

migrate:
	php artisan migrate

console:
	php artisan tinker

log:
	tail -f storage/logs/laravel.log

test:
	php artisan test

deploy:
	git push heroku

lint:
	composer exec --verbose phpcs -- --standard=PSR12 routes

lint-fix:
	composer phpcbf

.PHONY: tests