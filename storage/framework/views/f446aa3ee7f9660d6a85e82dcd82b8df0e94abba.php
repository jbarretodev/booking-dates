
<?php $__env->startSection('content-site-dashboard'); ?>
<link href="<?php echo e(dsAsset('site/css/custom/client/client-pending-booking.css')); ?>" rel="stylesheet" />
<div class="row">
	<div class="col-md-12">
		<div class="card card-box-shadow card-pending-booking p-4">
			<div class="w-100 pb-3">
			<h5><?php echo e(translate('All pending & other booking info')); ?></h5>
			</div>
			<div class="col-md-12">
				<table class="table table-responsive w100" id="tableElement"></table>
			</div>
		</div>

	</div>
</div>
<script src="<?php echo e(dsAsset('site/js/custom/client/client-pending-booking.js')); ?>"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('site.layouts.site-dashboard', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /app/resources/views/site/client/client-pending-booking.blade.php ENDPATH**/ ?>