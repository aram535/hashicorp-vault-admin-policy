# Manage auth methods broadly across Vault
path "auth/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Transit engine
path "transit/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Audit devices
path "sys/audit"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
path "sys/audit-hash"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List auth methods
path "sys/auth"
{
  capabilities = ["read"]
}

# Create, update, and delete auth methods
path "sys/auth/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Lookup self and capabilities
path "sys/capabilities"
{
  capabilities = ["read", "list"]
}

path "sys/capabilities-accessor"
{
  capabilities = ["read", "list"]
}

path "sys/capabilities-self"
{
  capabilities = ["create", "read", "update", "list"]
}

# Ability to read system configuration, control groups, cors, reload, state, ui
path "sys/config/*"
{
  capabilities = ["read", "update"]
}

# Modify system control groups
path "sys/control-group" 
{
  capabilities = ["read", "update"]
}

# Generate a root token 
path "sys/generate-root" 
{
  capabilities = ["read", "update"]
}

path "sys/generate-root/*" 
{
  capabilities = ["read", "update"]
}

# Access to namespaces [enterprise-only] 
path "sys/namespaces/*" 
{
    capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Create and manage ACL policies
path "sys/policies/acl/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List existing policies
path "sys/policies/acl"
{
  capabilities = ["list"]
}

# Create and manage ACL policies broadly across Vault
path "sys/policy/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List existing policies
path "sys/policy"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Allow a token to renew a lease via lease_id in the request body; old path for
# old clients, new path for newer
path "sys/renew" {
    capabilities = ["update"]
}

path "sys/leases/renew" {
    capabilities = ["update"]
}

# Manage metrics
path "sys/internal/counters/*"
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List existing secrets engines.
path "sys/mounts"
{
  capabilities = ["read"]
}

path "sys/mounts/*" 
{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Read health checks
path "sys/health"
{
  capabilities = ["read", "sudo"]
}

# Create and manage entities and groups
path "identity/*" {
   capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage tokens
path "auth/token/*" {
   capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Allow a token to wrap arbitrary values in a response-wrapping token
path "sys/wrapping/wrap" {
    capabilities = ["update"]
}

# Allow a token to look up the creation time and TTL of a given
# response-wrapping token
path "sys/wrapping/lookup" {
    capabilities = ["update"]
}

# Allow a token to unwrap a response-wrapping token. This is a convenience to
# avoid client token swapping since this is also part of the response wrapping
# policy.
path "sys/wrapping/unwrap" {
    capabilities = ["update"]
}

# Allow general purpose tools
path "sys/tools/hash" {
    capabilities = ["update"]
}
path "sys/tools/hash/*" {
    capabilities = ["update"]
}

# Allow checking the status of a Control Group request if the user has the accessor
path "sys/control-group/request" {
    capabilities = ["update"]
}

# Allow a token to look up its own entity by id or name
