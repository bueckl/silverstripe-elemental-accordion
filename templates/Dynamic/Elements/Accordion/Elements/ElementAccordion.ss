<div class="element_content__content <% if $Style %>element_content__$ExtraClass<% end_if %>">

    <% if $ShowTitle %><h3>$Title</h3><% end_if %>
    <% if $Content %>$Content<% end_if %>

    <% if $Panels %>
        <div id="accordion-{$ID}" class="accordion">
            <% loop $Panels %>
            <div class="card">
                <div class="card-header" id="heading_{$Pos}">
                  <h5 class="mb-0">
                    <button class="btn btn-link" data-toggle="collapse" data-target="#collapse_{$Pos}" aria-expanded="false" aria-controls="collapse_{$Pos}">
                      $Title
                    </button>
                  </h5>
                </div>

                <div id="collapse_{$Pos}" class="collapse" aria-labelledby="heading_{$Pos}" data-parent="#accordion-{$Top.ID}">
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