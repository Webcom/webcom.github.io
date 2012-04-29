BUILD_DIR = bootstrap
BOOTSTRAP_DIR = _dev/bootstrap

BOOTSTRAP_LESS = /less/bootstrap-webcom.less
WEBCOM_LESS = /less/webcom.less
BOOTSTRAP_RESPONSIVE_LESS = /less/responsive.less

#
# BUILD BOOTSTRAP DIRECTORY
# recess, uglifyjs and coffeecup are required
#

webcom:
	# make directories
	mkdir -p ${BUILD_DIR}/img
	mkdir -p ${BUILD_DIR}/css
	# copy Bootstrap images to public image dir
	cp ${BOOTSTRAP_DIR}/img/* ${BUILD_DIR}/img/
	# copy Webcom .less files for compilation
	cp _dev/${BOOTSTRAP_LESS} ${BOOTSTRAP_DIR}/less
	cp _dev/${WEBCOM_LESS} ${BOOTSTRAP_DIR}/less
	# compile .less files into .css
	#recess --compile ${BOOTSTRAP_DIR}${BOOTSTRAP_LESS} > ${BUILD_DIR}/css/bootstrap.css
	recess --compress ${BOOTSTRAP_DIR}${BOOTSTRAP_LESS} > ${BUILD_DIR}/css/bootstrap.min.css
	#recess --compile ${BOOTSTRAP_DIR}${BOOTSTRAP_RESPONSIVE_LESS} > ${BUILD_DIR}/css/bootstrap-responsive.css
	recess --compress ${BOOTSTRAP_DIR}${BOOTSTRAP_RESPONSIVE_LESS} > ${BUILD_DIR}/css/bootstrap-responsive.min.css
	# make coffee
	coffeecup -o ./  _dev/coffee/*.coffee
