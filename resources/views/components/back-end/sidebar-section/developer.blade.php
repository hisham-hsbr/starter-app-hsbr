@canany(['Developer Settings'])
    <x-back-end.layouts.sidebar-nav-header head="Developer Section" />

    <!-- Developer Settings Start -->
    @canany(['Developer Settings'])
        <x-back-end.layouts.sidebar-nav-level head="Developer Settings" href="#"
            menu_open="{{ request()->is('developer/settings*') ? 'menu-open' : '' }}"
            active="{{ request()->is('developer/settings/*') ? 'active' : '' }} {{ request()->is('developer/settings/*') ? 'active' : '' }}"
            menu_icon="fa fa-cogs" drop_icon="fas fa-angle-left">
            <!-- App Settings Menu Start -->
            @can('App Settings')
                <x-back-end.layouts.sidebar-nav-multi-level head="App Settings" href="{{ route('app-settings.index') }}" menu_open=""
                    active="{{ request()->is('developer/settings/app-settings*') ? 'active' : '' }}" menu_icon="fa fa-wrench"
                    drop_icon="" />
            @endcan <!-- App Settings Menu End -->
            <!-- Developer Settings Menu Start -->
            @can('Developer Settings')
                <x-back-end.layouts.sidebar-nav-multi-level head="Developer Settings"
                    href="{{ route('settings.developer-settings.index') }}" menu_open=""
                    active="{{ request()->is('developer/settings/developer-settings*') ? 'active' : '' }}" menu_icon="fa fa-wrench"
                    drop_icon="" />
            @endcan <!-- Blood Menu End -->
        </x-back-end.layouts.sidebar-nav-level>
    @endcanany <!-- Developer Settings End -->

@endcanany <!-- Masters Menu End -->
