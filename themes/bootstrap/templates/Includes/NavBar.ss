<nav class="navbar navbar-expand-lg navbar-light px-0" style="background-color: #ffcd00;" aria-label="Site main navigation">
    <a class="navbar-brand " href="{$BaseUrl}" aria-label="{$SiteConfig.Title}">
        $SiteConfig.Title
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-end" id="navbarText">
        <ul class="navbar-nav">
            <% loop $Menu(1) %>
                <li class="nav-item $LinkingMode nav-item<% if $isCurrent || $isSection %> active<% end_if %><% if Children && ClassName != 'ShowHolder' %> dropdown<% end_if %>">
                    <a class="nav-link<% if Children && ClassName != 'ShowHolder' %> dropdown-toggle<% end_if %>" href="$Link"  <% if Children && ClassName != 'ShowHolder' %> id="navbarDropdown$Pos" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"<% end_if %> >$MenuTitle.XML</a>

                    <% if Children && ClassName != 'ShowHolder' %>
                        <div class="dropdown-menu shadow-sm" aria-labelledby="navbarDropdown$Pos">
                            <a class="dropdown-item" href="$Link">$MenuTitle</a>
                            <% loop Children %>
                                <a class="dropdown-item" href="$Link">$MenuTitle</a>
                            <% end_loop %>
                        </div>
                    <% end_if %>

                </li>
            <% end_loop %>
        </ul>
    </div>
</nav>