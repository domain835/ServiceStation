<header class="market-header header">
    <div class="container-fluid">
        <nav class="navbar navbar-toggleable-md navbar-inverse fixed-top bg-inverse">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <a class="navbar-brand" href="{{ route('home') }}"><img src="/assets/front/images/version/wheel-logo-small.png" alt=""></a>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('home') }}">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('categories.single', ['slug' => 'service']) }}">Сервис</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('categories.single', ['slug' => 'shop']) }}">Магазин</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="marketing-blog.html">Блог</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="marketing-contact.html">Контакты</a>
                    </li>
                </ul>
                <form class="form-inline" method="get" action="{{ route('search') }}">
                    <input name="s"
                           class="form-control mr-sm-2 @error('s') is-invalid @enderror"
                           type="text"
                           placeholder="Найти..."
                           required>
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Поиск</button>
                </form>
            </div>
        </nav>
    </div><!-- end container-fluid -->
</header><!-- end header -->
