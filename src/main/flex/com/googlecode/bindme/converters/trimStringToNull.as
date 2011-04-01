/*
 * Copyright 2011 Overstock.com and others.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.googlecode.bindme.converters {

/**
 * Returns a converter function which converts strings by trimming away any leading and trailing
 * whitespace; strings containing only whitespace are converted to null.
 */
public function trimStringToNull():Function {
  return function( value:String ):String {
    var result:String = value;
    if (result != null) {
      result = result.replace(/(^\s+|\s+$)/, "");

      if (result.length == 0) {
        result = null;
      }
    }
    return result;
  }
}

}