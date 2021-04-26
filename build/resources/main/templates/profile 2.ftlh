<#import "parts/common.ftl" as c>

<@c.page>
<h5>${username}</h5>
${message?ifExists}
<form method="post" enctype="multipart/form-data">


    <div class="form-group row">
        <label class="col-sm-2 col-form-label">First Name:</label>
        <div class="col-sm-6">
            <input type="firstName" name="firstName" class="form-control" placeholder="First Name" value="${firstName!''}" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Last Name:</label>
        <div class="col-sm-6">
            <input type="lastName" name="lastName" class="form-control" placeholder="Last Name" value="${lastName!''}" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Description:</label>
        <div class="col-sm-6">
            <input type="description" name="description" class="form-control" placeholder="Description" value="${description!''}" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Awatar:</label>
        <div class="col-sm-6">
            <input type="file" name="file" id="customFile" />
            <label class="custom-file-label" for="customFile">Choose file</label>
        </div>
    </div>


    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password:</label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control" placeholder="Password" />
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Email:</label>
        <div class="col-sm-6">
            <input type="email" name="email" class="form-control" placeholder="some@some.com" value="${email!''}" />
        </div>
    </div>


    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button class="btn btn-primary" type="submit">Save</button>

</form>
</@c.page>
