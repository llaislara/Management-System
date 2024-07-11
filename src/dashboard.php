<?php
    session_start();

    include 'includes/flash_messages.php';
    include_once('includes/header.php');
    include 'utils.php';
    include 'includes/auth_validate.php'
?>
        <div id="page-wrapper">
            <?php include 'includes/flash_messages.php'?>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
            </div>

            <div class="row">

                <div class="col-lg-3 col-md-6" style="border: 1px solid #262e4945;border-radius: 16px;margin: 5px 5px 5px 5px;width: 27rem; padding: 10px;">
                    <div class="panelVendor">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-group fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php 
                                        echo getVendorCount();
                                    ?></div>
                                    <div>Vendors</div>
                                </div>
                            </div>
                        </div>
                        <a href="vendors.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6" style="border: 1px solid #262e4945;border-radius: 16px;margin: 5px 5px 5px 5px;width: 27rem; padding: 10px;">
                    <div class="panelCostumer">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-group fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php 
                                    echo getCustomerCount();
                                    ?></div>
                                    <div>Customers</div>
                                </div>
                            </div>
                        </div>
                        <a href="customer.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6" style="border: 1px solid #262e4945;border-radius: 16px;margin: 5px 5px 5px 5px;width: 27rem; padding: 10px;">
                    <div class="panelProducts">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-group fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge"><?php 
                                    echo getProductCount();
                                    ?></div>
                                    <div>Products</div>
                                </div>
                            </div>
                        </div>
                        <a href="product.php">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>

<?php include_once('includes/footer.php'); ?>