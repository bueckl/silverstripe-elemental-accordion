<div class="element_content__content <% if $Style %>element_content__$ExtraClass<% end_if %>">

    <% if $ShowTitle %><h3>$Title</h3><% end_if %>
    <% if $Content %>$Content<% end_if %>

    <% if $Panels %>
        <div id="accordion-{$ID}" class="accordion">
            <% loop $Panels %>
            <div class="card">
                <div class="card-header" id="heading_{$Up.ID}_{$Pos}">
                  <h5 class="mb-0">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapse_{$Up.ID}_{$Pos}" aria-expanded="false" aria-controls="collapse_{$Up.ID}_{$Pos}">
                      $Title
                    </button>
                  </h5>
                </div>

                <div id="collapse_{$Up.ID}_{$Pos}" class="collapse" aria-labelledby="heading_{$Up.ID}_{$Pos}" data-parent="#accordion-{$Up.ID}">
                  <div class="card-body">
                    <% if $Image %>
                        <img src="$Image.URL" class="img-responsive" alt="$Title.ATT">
                    <% end_if %>
                        $Content
                    <% if $ElementLink %>
                        $ElementLink
                    <% end_if %>
                  </div>
                </div>
            
            </div>    
            <% end_loop %>
        </div>
    <% end_if %>
</div>