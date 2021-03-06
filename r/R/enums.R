# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.

#' @export
`print.arrow-enum` <- function(x, ...){
  NextMethod()
}

enum <- function(class, ..., .list = list(...)){
  structure(
    .list,
    class = c(class, "arrow-enum")
  )
}

#' Arrow enums
#' @name enums
#' @export
#' @keywords internal
TimeUnit <- enum("TimeUnit::type",
  SECOND = 0L, MILLI = 1L, MICRO = 2L, NANO = 3L
)

#' @rdname enums
#' @export
DateUnit <- enum("DateUnit", DAY = 0L, MILLI = 1L)

#' @rdname enums
#' @export
Type <- enum("Type::type",
  "NA" = 0L,
  BOOL = 1L,
  UINT8 = 2L,
  INT8 = 3L,
  UINT16 = 4L,
  INT16 = 5L,
  UINT32 = 6L,
  INT32 = 7L,
  UINT64 = 8L,
  INT64 = 9L,
  HALF_FLOAT = 10L,
  FLOAT = 11L,
  DOUBLE = 12L,
  STRING = 13L,
  BINARY = 14L,
  FIXED_SIZE_BINARY = 15L,
  DATE32 = 16L,
  DATE64 = 17L,
  TIMESTAMP = 18L,
  TIME32 = 19L,
  TIME64 = 20L,
  INTERVAL_MONTHS = 21L,
  INTERVAL_DAY_TIME = 22L,
  DECIMAL = 23L,
  LIST = 24L,
  STRUCT = 25L,
  UNION = 26L,
  DICTIONARY = 27L,
  MAP = 28L
)

#' @rdname enums
#' @export
StatusCode <- enum("StatusCode",
  OK = 0L, OutOfMemory = 1L, KeyError = 2L, TypeError = 3L,
  Invalid = 4L, IOError = 5L, CapacityError = 6L, IndexError = 7L,
  UnknownError = 9L, NotImplemented = 10L, SerializationError = 11L,
  PythonError = 12L, RError = 13L,
  PlasmaObjectExists = 20L, PlasmaObjectNotFound = 21L,
  PlasmaStoreFull = 22L, PlasmaObjectAlreadySealed = 23L
)

#' @rdname enums
#' @export
FileMode <- enum("FileMode",
  READ = 0L, WRITE = 1L, READWRITE = 2L
)

#' @rdname enums
#' @export
MessageType <- enum("MessageType",
  NONE = 0L, SCHEMA = 1L, DICTIONARY_BATCH = 2L, RECORD_BATCH = 3L, TENSOR = 4L
)

#' @rdname enums
#' @export
CompressionType <- enum("Compression::type",
  UNCOMPRESSED = 0L, SNAPPY = 1L, GZIP = 2L, BROTLI = 3L, ZSTD = 4L, LZ4 = 5L,
  LZ4_FRAME = 6L, LZO = 7L, BZ2 = 8L
)

#' @export
#' @rdname enums
FileType <- enum("FileType",
  NotFound = 0L, Unknown = 1L, File = 2L, Directory = 3L
)

#' @export
#' @rdname enums
ParquetVersionType <- enum("ParquetVersionType",
  PARQUET_1_0 = 0L, PARQUET_2_0 = 1L
)
