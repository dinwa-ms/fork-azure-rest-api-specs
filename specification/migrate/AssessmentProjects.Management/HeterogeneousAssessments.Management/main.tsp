import "@typespec/http";
import "@typespec/rest";
import "@azure-tools/typespec-azure-core";
import "@typespec/versioning";
import "@azure-tools/typespec-azure-resource-manager";
import "@typespec/openapi";

// Common list of supported API versions.
import "./HAApiVersions.tsp";

// Add Assessment service routes here.
import "./haasmroutes.tsp";

// using Autorest;
using TypeSpec.Http;
using TypeSpec.Rest;
using TypeSpec.Versioning;
using Azure.Core;
using Azure.ResourceManager;
using OpenAPI;

@armProviderNamespace
@service(#{ title: "Azure Migrate Assessment Service" })
@versioned(HaApiVersions)
@doc("Azure Migrate Resource Provider management API.")
namespace Microsoft.Migrate;

interface Operations extends Azure.ResourceManager.Operations {}
