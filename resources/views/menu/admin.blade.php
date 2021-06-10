<li class="nav-item {{ Nav::isRoute('admin.category') }}">
    <a class="nav-link" href="{{ route('admin.category') }}">
        <i class="fas fa-fw fa-list"></i>
        <span>Kategori Pakaian</span>
    </a>
</li>
<li class="nav-item {{ Nav::isRoute('admin.product') }}">
    <a class="nav-link" href="{{ route('admin.product') }}">
        <i class="fas fa-fw fa-tshirt"></i>
        <span>Pakaian</span>
    </a>
</li>
<li class="nav-item {{ Nav::isRoute('admin.comment') }}">
    <a class="nav-link" href="{{ route('admin.comment') }}">
        <i class="fas fa-fw fa-comments"></i>
        <span>Komentar</span>
    </a>
</li>
