<div class="card">
  <div class="card-header" style="border:.5px solid #ececec;border-bottom: none;">
    <div class="custom-control custom-checkbox">
      <input type="checkbox" class="custom-control-input tiktok_all_account_select" id="tiktok_all_account_select">
      <label class="mb-3 custom-control-label" for="tiktok_all_account_select" title="Select all"></label>
    </div>
    <div class="pl-3 mt-1">
      <h4 class="d-inline"><i class="fab fa-tiktok" style="font-size: 14px;"></i> TikTok</h4>
    </div>
  </div>
  <div class="card-body makeScroll_1 account_div_height" style="border:.5px solid #ececec;">
    <ul class="list-unstyled list-unstyled-border">
      <!-- TikTok Accounts -->
      <?php $i = 0; ?>
      <?php foreach ($tiktok_account_list as $single_account): ?>
        <li class="media">
          <div class="custom-control custom-checkbox">
            <input type="checkbox" name="tiktok_accounts[]" class="custom-control-input tiktok_single_user" id="tiktok_single_user-<?php echo $i; ?>" value="tiktok_users_info-<?php echo $single_account['id']; ?>" 
            <?php 
              if (($post_action == 'edit' || $post_action == 'clone') && count($campaigns_social_media) > 0) {
                $temp = "tiktok_users_info-" . $single_account['id'];
                if (in_array($temp, $campaigns_social_media)) {
                  echo "checked";
                }
              }
            ?>>
            <label class="mb-2 custom-control-label" for="tiktok_single_user-<?php echo $i; ?>"></label>
          </div>
          <img class="mr-3 rounded-circle" width="50" src="<?php echo $single_account['profile_pic']; ?>" alt="avatar">
          <div class="media-body">
            <div class="accounts_details_collapse pointer">
              <h6 class="media-title"><?php echo $single_account['name']; ?></h6>
              <div class="text-small text-muted"><?php echo $single_account['tiktok_id']; ?></div>
            </div>
          </div>
        </li>
        <?php $i++; ?>
      <?php endforeach; ?>
    </ul>
  </div>
</div>