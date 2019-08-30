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
package org.openremote.model.query.filter;

import org.openremote.model.attribute.AttributeType;
import org.openremote.model.query.AssetQuery;
import org.openremote.model.query.LogicGroup;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import static org.openremote.model.attribute.AttributeType.LOCATION;

public class LocationAttributePredicate extends AttributePredicate {

    public LocationAttributePredicate(GeofencePredicate geofencePredicate) {
        super(new StringPredicate(AttributeType.LOCATION.getAttributeName()), geofencePredicate);
    }

    public static List<GeofencePredicate> getLocationPredicates(LogicGroup<AttributePredicate> attributePredicates) {
        List<GeofencePredicate> geofences = new ArrayList<>();

        Arrays.stream(attributePredicates.items)
                .filter(attributePredicate -> attributePredicate.name != null
                        && attributePredicate.name.match == AssetQuery.Match.EXACT
                        && LOCATION.getAttributeName().equals(attributePredicate.name.value)
                        && attributePredicate.value instanceof GeofencePredicate)
                .map(attributePredicate -> (GeofencePredicate) attributePredicate.value)
                .forEach(geofences::add);

        if (attributePredicates.groups != null) {
            Arrays.stream(attributePredicates.groups).forEach(group ->
                geofences.addAll(getLocationPredicates(group))
            );
        }

        return geofences;
    }
}
