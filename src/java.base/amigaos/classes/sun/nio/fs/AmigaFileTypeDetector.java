/*
 * This file is subject to the terms and conditions defined in
 * file 'LICENSE.txt', which is part of this source code package.
 */
package sun.nio.fs;

import java.nio.file.Path;

/**
 * @todo should this use Amiga datatypes? Or just use some MIME stuff like
 * the other file type detectors?
 * @author jaokim
 */
public class AmigaFileTypeDetector extends AbstractFileTypeDetector {
    @Override
    public String implProbeContentType(Path file) {
        return null;
    }
}
