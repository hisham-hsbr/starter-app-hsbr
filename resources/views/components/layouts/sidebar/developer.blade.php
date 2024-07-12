<x-layouts.sidebar.sidebar-nav-level head="Developer Settings" href="#"
    menu_open="{{ request()->is('developer/settings*') ? 'menu-open' : '' }}"
    active="{{ request()->is('developer/settings/*') ? 'active' : '' }}" menu_icon="fa fa-cogs"
    drop_icon="fas fa-angle-left">
    @can('Application Settings')
        <x-layouts.sidebar.sidebar-nav-multi-level head="Application Settings" href="{{ route('app-settings.index') }}"
            menu_open="" active="{{ request()->is('developer/settings/app-settings*') ? 'active' : '' }}"
            menu_icon="fa fa-wrench" drop_icon="" />
    @endcan
    @can('Developer Settings')
        <x-layouts.sidebar.sidebar-nav-multi-level head="Developer Settings"
            href="{{ route('settings.developer-settings.index') }}" menu_open=""
            active="{{ request()->is('developer/settings/developer-settings*') ? 'active' : '' }}" menu_icon="fa fa-wrench"
            drop_icon="" />
    @endcan
</x-layouts.sidebar.sidebar-nav-level>
