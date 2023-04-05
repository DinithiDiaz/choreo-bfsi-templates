// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.

// This software is the property of WSO2 LLC. and its suppliers, if any.
// Dissemination of any information or reproduction of any material contained
// herein is strictly forbidden, unless permitted by WSO2 in accordance with
// the WSO2 Software License available at: https://wso2.com/licenses/eula/3.2
// For specific language governing the permissions and limitations under
// this license, please see the license as well as any agreement you’ve
// entered into with WSO2 governing the purchase of this software and any
// associated services.

import bfsi_account_and_transaction_api.util;

# Links relevant to the payload.
public type Links record {|
    # Self Link relevant to the payload
    string Self;
    # First Link relevant to the payload
    string First?;
    # Prev Link relevant to the payload
    string Prev?;
    # Next Link relevant to the payload
    string Next?;
    # Last Link relevant to the payload
    string Last?;
|};

# Meta Data relevant to the payload.
public type Meta record {|
    # Count of Metadata
    int TotalPages?;
    # All dates in the JSON payloads are represented in ISO 8601 date-time format. 
    # All date-time fields in responses must include the timezone. An example is below:
    # 2017-04-05T10:43:07+00:00
    string FirstAvailableDateTime?;
    # All dates in the JSON payloads are represented in ISO 8601 date-time format. 
    # All date-time fields in responses must include the timezone. An example is below:
    # 2017-04-05T10:43:07+00:00
    string LastAvailableDateTime?;
|};

# Provides the details to identify the beneficiary account.
public type CreditorAccount record {|
    # Name of the identification scheme, in a coded form as published in an external list.
    string SchemeName;
    # Beneficiary account identification.
    string Identification = util:getRandomId();
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by 
    # the bank's online channels. `Note`, the account name is not the product name or the nickname of the account.
    string Name?;
    # This is secondary identification of the account, as assigned by the account servicing institution. 
    # This can be used by building societies to additionally identify accounts with a roll number 
    # (in addition to a sort code and account number combination).
    string SecondaryIdentification?;
|};

# Party that manages the account on behalf of the account owner, that is manages the registration and booking of 
# entries on the account, calculates balances on the account and provides information about the account.
# This is the servicer of the beneficiary account.
public type CreditorAgent record {|
    # Name of the identification scheme, in a coded form as published in an external list.
    string SchemeName;
    # Unique and unambiguous identification of the servicing institution.
    string Identification;
|};

# Information that locates and identifies a specific address, as defined by postal services.
public type PostalAddress record {|
    # Identifies the nature of the postal address.
    string AddressType?;
    # Identification of a division of a large organisation or building.
    string Department?;
    # Identification of a sub-division of a large organisation or building.
    string SubDepartment?;
    # Name of a street or thoroughfare.
    string StreetName?;
    # Number that identifies the position of a building on a street.
    string BuildingNumber?;
    # Identifier consisting of a group of letters and/or numbers that is added to a postal address to assist the 
    # sorting of mail.
    string PostCode?;
    # Name of a built-up area, with defined boundaries, and a local government.
    string TownName?;
    # Identifies a subdivision of a country such as state, region, county.
    string CountrySubDivision?;
    # Nation with its own government.
    string Country?;
    # Describes address line list
    string[] AddressLine?;
|};

# Represent an empty object.
public type Object record {|
|};
