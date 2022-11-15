
<?php $__env->startSection('content-site-dashboard'); ?>
<link href="<?php echo e(dsAsset('site/css/custom/client/client-done-booking.css')); ?>" rel="stylesheet" />
<div class="row">
	<div class="col-md-12">
		<div class="card card-box-shadow p-4 card-done-booking">
			<div class="w-100 pb-3">
				<h5><?php echo e(translate('All done booking info')); ?></h5>
			</div>
			<div class="col-md-12">
				<table class="table table-responsive w100" id="tableElement"></table>
			</div>
		</div>

	</div>
</div>
<script src="<?php echo e(dsAsset('site/js/custom/client/client-done-booking.js')); ?>"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('site.layouts.site-dashboard', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /app/resources/views/site/client/client-done-booking.blade.php ENDPATH**/ ?>