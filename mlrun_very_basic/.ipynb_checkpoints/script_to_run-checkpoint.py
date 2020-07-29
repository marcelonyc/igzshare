def handler(context):
    # Parameters
    param1 = context.get_param('param1')
    param2 = context.get_param('param2')
    file_location = context.get_param('file_location')
    run = context.get_param('run')
    
    # Logging
    context.logger.info("Param1 is %s. Param2 %s. Run # %s" % (param1,param2,run))
    
    # Record results for tracking
    context.log_result('accuracy', run)
    return
    