BUILD_DIR = bootstrap
BOOTSTRAP_DIR = _dev/bootstrap

BOOTSTRAP_LESS = /less/bootstrap-webcom.less
WEBCOM_LESS = /less/webcom.less
BOOTSTRAP_RESPONSIVE_LESS = /less/responsive.less
#DATE=$(shell date +%I:%M%p)


#
# BUILD SIMPLE BOOTSTRAP DIRECTORY
# recess & uglifyjs are required
#

webcom:
	mkdir -p ${BUILD_DIR}/img
	mkdir -p ${BUILD_DIR}/css
	cp ${BOOTSTRAP_DIR}/img/* ${BUILD_DIR}/img/
	cp _dev/${BOOTSTRAP_LESS} ${BOOTSTRAP_DIR}/less
	cp _dev/${WEBCOM_LESS} ${BOOTSTRAP_DIR}/less
	recess --compile ${BOOTSTRAP_DIR}${BOOTSTRAP_LESS} > ${BUILD_DIR}/css/bootstrap.css
	recess --compress ${BOOTSTRAP_DIR}${BOOTSTRAP_LESS} > ${BUILD_DIR}/css/bootstrap.min.css
	recess --compile ${BOOTSTRAP_DIR}${BOOTSTRAP_RESPONSIVE_LESS} > ${BUILD_DIR}/css/bootstrap-responsive.css
	recess --compress ${BOOTSTRAP_DIR}${BOOTSTRAP_RESPONSIVE_LESS} > ${BUILD_DIR}/css/bootstrap-responsive.min.css
