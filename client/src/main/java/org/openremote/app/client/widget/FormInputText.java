/*
 * Copyright 2017, OpenRemote Inc.
 *
 * See the CONTRIBUTORS.txt file in the distribution for a
 * full listing of individual contributors.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package org.openremote.app.client.widget;

import com.google.gwt.user.client.ui.TextBox;

public class FormInputText extends TextBox {

    String placeholder = "";
    boolean isSecret = false;

    boolean autofocus;

    public FormInputText() {
        this(null);
    }

    public FormInputText(String value) {
        super();
        setStyleName("or-FormControl or-FormInputText");
        setValue(value);
    }

    public String getPlaceholder() {
        return placeholder;
    }

    public void setPlaceholder(String text) {
        placeholder = (text != null ? text : "");
        getElement().setPropertyString("placeholder", placeholder);
    }

    public void setSecret(boolean isSecret) {
        this.isSecret = isSecret;
        if (this.isSecret) {
            getElement().setAttribute("type", "password");
        } else {
            getElement().setAttribute("type", "text");
        }
    }

    public boolean isAutofocus() {
        return autofocus;
    }

    public void setAutofocus(boolean autofocus) {
        getElement().setPropertyBoolean("autofocus", autofocus);
    }
}