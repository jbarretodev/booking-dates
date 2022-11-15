
<?php $__env->startSection('content-site-dashboard'); ?>
<link href="<?php echo e(dsAsset('site/css/custom/client/client-dashboard.css')); ?>" rel="stylesheet" />
<div class="row">
	<div class="col-md-4">
		<div class="card card-box-shadow card-service-status card-done mb-2">
			<div class="p-3  py-4">
				<span class="shape"></span>
				<div class="card-text-color"><?php echo e(translate('Complete Booking')); ?></div>
				<h3 class="mt-2 fw500"><i class="fa fa-check-circle color-done"></i> <?php echo e($bookingStatus['done']); ?></h3>
			</div>
		</div>
	</div>

	<div class="col-md-4">
		<div class="card card-box-shadow card-service-status card-cancel mb-2">
			<div class="p-3  py-4">
				<span class="shape"></span>
				<div class="card-text-color"><?php echo e(translate('Cancel Booking')); ?></div>
				<h3 class="mt-2 fw500"><i class="fa fa-ban color-cancel"></i> <?php echo e($bookingStatus['cancel']); ?></h3>
			</div>
		</div>
	</div>

	<div class="col-md-4">
		<div class="card card-box-shadow card-service-status card-pending mb-2">
			<div class="p-3  py-4">
				<span class="shape"></span>
				<div class="card-text-color"><?php echo e(translate('Pending & Other')); ?></div>
				<h3 class="mt-2 fw500"><i class="fas fa-clock color-pending"></i> <?php echo e($bookingStatus['others']); ?></h3>
			</div>
		</div>
	</div>

</div>

<div class="row">
	<div class="col-md-12 mt-2">
		<div class="card card-box-shadow p-4 mh-425">
			<div class="row pl-4 pr-4 pb-2 pt-1">
			<div class="col-md-6 fs-18">
				<h5><?php echo e(translate('Last 10 booking info')); ?></h5>
			</div>
			<div class="col-md-6">
				<a class="float-end btn btn-success btn-sm" href="<?php echo e(route('site.appoinment.booking')); ?>"><i class="fas fa-clock"></i> <?php echo e(translate('New Booking')); ?></a></div>
			</div>
			
			<div class="col-md-12">
				<table class="table table-responsive w100" id="tableElement"></table>
			</div>
		</div>

	</div>
</div>
<script src="<?php echo e(dsAsset('site/js/custom/client/client-dashboard.js')); ?>"></script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('site.layouts.site-dashboard', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /app/resources/views/site/client/client-dashboard.blade.php ENDPATH**/ ?>