<#import "base.ftlh" as base>

<@base.main>
    <section class="auth">
        <div class="auth__bg"></div>
        <div class="auth__inner">
            <a href="#" class="btn__back">
                <svg class="arrow__left-symbol">
                    <use xlink:href="#arrow-left"></use>
                </svg>
            </a>
            <div class="auth__logo">
                <div class="auth__logo-inner">
                    <img src="assets/images/header/logo-1x.png" alt="" class="auth__logo-img">
                </div>
            </div>
            <div class="auth__welcome">
                <div class="auth__welcome-title">Войдите или зарегистрируйтесь</div>
<#--                <button type="button" class="auth__login-btn">Войти</button>-->
<#--                <button type="button" class="auth__registration-btn">Зарегистрироваться</button>-->
                <a href="/login" type="button" class="auth__login-btn">Войти</a>
                <a href="/sign_up" type="button" class="auth__registration-btn">Зарегистрироваться</a>
            </div>
        </div>
    </section>
</@base.main>
<script src="assets/js/app.js"></script>
