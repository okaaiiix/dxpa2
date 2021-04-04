[#if content.btnText?has_content && content.heading?has_content && content.body?has_content]
  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">
    ${content.btnText}
  </button>


  <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalCenterTitle">${content.heading}</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          ${cmsfn.decode(content).body}
        </div>
      </div>
    </div>
  </div>
[/#if]