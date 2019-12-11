<?=$header; ?>
<div id="content">
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment/indodana.png" alt="" /><?=$heading_title; ?></h1>
      <div class="buttons">
        <a onclick="$('#form').submit();" class="button">
          <?=$text_button_save; ?>
        </a>
        <a href="<?=$form_cancel; ?>" class="button">
          <?=$text_button_cancel; ?>
        </a>
      </div>
    </div>
    <div class="content">
      <form action="<?=$form_action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><h2>Indodana Paylater Configuration</h2></td>
          </tr>
          <tr>
            <td><?=$entry_api_secret; ?></td>
            <td>
              <input type="text" name="indodana_checkout_api_secret" value="<?=$indodana_checkout_api_secret; ?>" size="30"/>
              <?php if ($error_api_secret_empty) { ?>
                <span class="error"><?=$error_api_secret_empty; ?></span>
              <?php } ?>
            </td>
          </tr>
          <tr>
            <td><?=$entry_api_key; ?></td>
            <td>
              <input type="text" name="indodana_checkout_api_key" value="<?=$indodana_checkout_api_key; ?>" size="30"/>
              <?php if ($error_api_key_empty) { ?>
                <span class="error"><?=$error_api_key_empty; ?></span>
              <?php } ?>
            </td>
          </tr>
          <tr>
            <td><?=$entry_environment; ?></td>
            <td>
              <?php if ($indodana_checkout_environment == $environment_production) { ?>
                <label>
                  <input type="radio" name="indodana_checkout_environment" value="<?=$environment_sandbox; ?>"/>
                  <?=$text_environment_sandbox; ?>
                </label>
                <label>
                  <input type="radio" name="indodana_checkout_environment" value="<?=$environment_production; ?>" checked/>
                  <?=$text_environment_production; ?>
                </label>
              <?php } else { ?>
                <label>
                  <input type="radio" name="indodana_checkout_environment" value="<?=$environment_sandbox; ?>" checked/>
                  <?=$text_environment_sandbox; ?>
                </label>
                <label>
                  <input type="radio" name="indodana_checkout_environment" value="<?=$environment_production; ?>"/>
                  <?=$text_environment_production; ?>
                </label>
              <?php } ?>
            </td>
          </tr>
          <tr>
            <td><?=$entry_order_pending_status; ?></td>
            <td><select name="indodana_checkout_default_order_pending_status_id">
              <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $indodana_checkout_default_order_pending_status_id) { ?>
                  <option value="<?=$order_status['order_status_id']; ?>" selected="selected"><?=$order_status['name']; ?></option>
                <?php } else { ?>
                  <option value="<?=$order_status['order_status_id']; ?>"><?=$order_status['name']; ?></option>
                <?php } ?>
              <?php } ?>
            </select></td>
          </tr>
          <tr>
            <td><?=$entry_order_success_status; ?></td>
            <td><select name="indodana_checkout_default_order_success_status_id">
              <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $indodana_checkout_default_order_success_status_id) { ?>
                  <option value="<?=$order_status['order_status_id']; ?>" selected="selected"><?=$order_status['name']; ?></option>
                <?php } else { ?>
                  <option value="<?=$order_status['order_status_id']; ?>"><?=$order_status['name']; ?></option>
                <?php } ?>
              <?php } ?>
            </select></td>
          </tr>
          <tr>
            <td><?=$entry_order_failed_status; ?></td>
            <td><select name="indodana_checkout_default_order_failed_status_id">
              <?php foreach ($order_statuses as $order_status) { ?>
                <?php if ($order_status['order_status_id'] == $indodana_checkout_default_order_failed_status_id) { ?>
                  <option value="<?=$order_status['order_status_id']; ?>" selected="selected"><?=$order_status['name']; ?></option>
                <?php } else { ?>
                  <option value="<?=$order_status['order_status_id']; ?>"><?=$order_status['name']; ?></option>
                <?php } ?>
              <?php } ?>
            </select></td>
          </tr>          
          <tr>
            <td><?=$entry_status; ?></td>
            <td><select name="indodana_checkout_status">
              <?php if ($indodana_checkout_status) { ?>
                <option value="1" selected="selected"><?=$text_enabled; ?></option>
                <option value="0"><?=$text_disabled; ?></option>
              <?php } else { ?>
                <option value="1"><?=$text_enabled; ?></option>
                <option value="0" selected="selected"><?=$text_disabled; ?></option>
              <?php } ?>
            </select></td>
          </tr>
          <tr>
            <td><?=$entry_sort_order; ?></td>
            <td>
              <input type="text" name="indodana_checkout_sort_order" value="<?=$indodana_checkout_sort_order; ?>" size="30"/>
              <?php if ($error_sort_order_empty) { ?>
                <span class="error"><?=$error_sort_order_empty; ?></span>
              <?php } ?>
            </td>
          </tr>
        </table>
      </form>
      <h2>Log</h2>
      <textarea 
        wrap="off" 
        style="width: 98%; height: 300px; padding: 5px; border: 1px solid #CCCCCC; background: #FFFFFF; overflow: scroll;"
      ><?= $log; ?></textarea>
    </div>
  </div>
</div>
<?=$footer; ?> 