from saxonche import PySaxonProcessor, PySaxonApiError

from pathlib import Path

with PySaxonProcessor() as saxon_proc:
    print(saxon_proc.version)

    xslt_processor = saxon_proc.new_xslt30_processor()

    filenames = [r'sample1 sheet.xsl', r'dir space test\sample1 sheet.xsl', r'dir space test/sample1 sheet.xsl']
    filenames.extend([Path(filename).as_posix() for filename in filenames])

    for filename in filenames:
        try:
            print(f'Running {filename}:')
            xslt_executable = xslt_processor.compile_stylesheet(stylesheet_file=filename)
            print(xslt_executable.call_template_returning_string())
        except PySaxonApiError as e:
            print(e.message)
        print()
