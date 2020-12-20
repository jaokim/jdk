/*
 * This file is subject to the terms and conditions defined in
 * file 'LICENSE.txt', which is part of this source code package.
 */
package sun.nio.ch;

import java.io.IOException;
import java.nio.channels.spi.AbstractSelector;

/**
 *
 * @author jaokim
 */
public class AmigaSelectorProvider extends SelectorProviderImpl {

    @Override
    public AbstractSelector openSelector() throws IOException {
        return new AmigaSelectorImpl(this);
    }
    
}
