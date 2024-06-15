<section class="section">
  <div class="section-header">
    <h1><i class="fas fa-key"></i> <?php echo $page_title; ?></h1>
  </div>

  <?php $this->load->view('admin/theme/message'); ?>

  <div class="section-body">
    <div class="row">
      <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h4><i class="fas fa-key"></i> <?php echo isset($api_key) ? "Your API Key" : "Generate API Key"; ?></h4>
            </div>
            <div class="card-body">
                <?php if(isset($api_key) && $api_key != ""): ?>
                    <h4><?php echo $api_key; ?></h4>
                <?php else: ?>
                    <p><?php echo $this->lang->line("Click the button below to generate your API key."); ?></p>
                <?php endif; ?>
            </div>
            <div class="card-footer bg-whitesmoke d-flex justify-content-between">
                <a class="btn btn-primary btn-lg" href="<?php echo site_url('api/generate_api_key'); ?>"><i class="fas fa-redo"></i> <?php echo isset($api_key) ? "Re-generate API Key" : "Generate API Key"; ?></a>
                <a class="btn btn-info btn-lg" href="<?php echo base_url('api/doc'); ?>" target="_blank"><i class="fas fa-cog"></i> <?php echo $this->lang->line("API Documentation"); ?></a>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>
