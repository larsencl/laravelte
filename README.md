![Laravelte](laravelte.svg)

## Laravel + Svelte

A basic starter project. Nothing fancy here.

- Laravel
- MySQL
- phpMyAdmin
- Svelte
- Inertia

## Installation
```bash 
git clone git@github.com:larsencl/laravelte.git
cd laravelte
```

### Using Makefile
```
make install
make up
```

```bash
# view all available make commands
make help
```

### Using Sail
Create an alias if you wish to directly use Sail
```bash 
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
```

```bash
# Example
sail artisan about
```

See [Executing Sail Commands](https://laravel.com/docs/10.x/sail#executing-sail-commands)

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.
