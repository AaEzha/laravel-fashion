<li class="nav-item {{ Nav::isRoute('member.index') }}">
    <a class="nav-link" href="{{ route('member.index') }}">
        <i class="fas fa-fw fa-users"></i>
        <span>Users</span>
    </a>
</li>
<li class="nav-item {{ Nav::isRoute('admin.category') }}">
    <a class="nav-link" href="{{ route('admin.category') }}">
        <i class="fas fa-fw fa-list"></i>
        <span>Categories</span>
    </a>
</li>
<li class="nav-item {{ Nav::isRoute('admin.product') }}">
    <a class="nav-link" href="{{ route('admin.product') }}">
        <i class="fas fa-fw fa-list"></i>
        <span>Products</span>
    </a>
</li>
<li class="nav-item {{ Nav::isRoute('admin.comment') }}">
    <a class="nav-link" href="{{ route('admin.comment') }}">
        <i class="fas fa-fw fa-list"></i>
        <span>Comments</span>
    </a>
</li>
