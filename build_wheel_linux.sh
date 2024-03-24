export CC=icx
export FC=ifx
# https://github.com/mesonbuild/meson-python/issues/507
python -m build --wheel --no-isolation
