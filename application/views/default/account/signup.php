<div class="row">
    <div class="col-md-12">
        <h3>Create an account</h3>
        <p class="alert bg-info">Sorry we are not providing account right now. Just contact the administrator for more details.</p>
        <form method="post" action="<?php echo base_url('account/signup'); ?>">
            <div class="form-group">
                <label for="signup_email">Email</label>
                <input type="email" disabled  name="email" id="signup_email" placeholder="Valid email address" class="form-control" />
            </div>
            <button type="submit" class="btn btn-primary">Sign up</button>
        </form>
    </div>
</div>