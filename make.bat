del dist
python setup.py sdist bdist_wheel 
git add -f train_test_plot_def.egg-info 
git add -f dist
git commit
git push
twine upload -u debdarsan -p MyPyPI@123 --repository-url https://upload.pypi.org/legacy/ dist/*
pip uninstall train_test_plot_def
pip install train_test_plot_def
