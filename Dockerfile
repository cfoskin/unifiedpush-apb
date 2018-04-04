FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHVuaWZpZWRwdXNoLWFwYgpkZXNjcmlwdGlvbjogQWVyb0dlYXIg\
VW5pZmllZFB1c2ggU2VydmVyCmJpbmRhYmxlOiBUcnVlCmFzeW5jOiBvcHRpb25hbAp0YWdzOiAK\
ICAtIG1vYmlsZS1zZXJ2aWNlCm1ldGFkYXRhOgogIGRpc3BsYXlOYW1lOiBBZXJvR2VhciBVUFMK\
ICBpbWFnZVVybDogImh0dHBzOi8vcGJzLnR3aW1nLmNvbS9wcm9maWxlX2ltYWdlcy8xNzk0NDQw\
MDA1L2Flcm9nZWFyX2ljb24tMV80MDB4NDAwLnBuZyIKICBkb2N1bWVudGF0aW9uVXJsOiAiaHR0\
cHM6Ly9hZXJvZ2Vhci5vcmcvcHVzaCIKICBwcm92aWRlckRpc3BsYXlOYW1lOiAiUmVkIEhhdCwg\
SW5jLiIKICBkZXBlbmRlbmNpZXM6IFsnUE9TVEdSRVM6OTUnXQogIHNlcnZpY2VOYW1lOiB1cHMK\
cGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogRGVwbG95IFVQUwogICAg\
ZnJlZTogVHJ1ZQogICAgbWV0YWRhdGE6IHt9CiAgICBwYXJhbWV0ZXJzOiBbXQogICAgYmluZF9w\
YXJhbWV0ZXJzOgogICAgLSBuYW1lOiB2YXJpYW50TmFtZQogICAgICByZXF1aXJlZDogVHJ1ZQog\
ICAgICB0aXRsZTogVGhlIG5hbWUgb2YgdGhlIHZhcmlhbnQgdG8gYmluZCB0aGUgbW9iaWxlIGNs\
aWVudCByZXByZXNlbnRhdGlvbiB0bwogICAgICB0eXBlOiBzdHJpbmcKICAgIC0gbmFtZTogdHlw\
ZQogICAgICByZXF1aXJlZDogVHJ1ZQogICAgICB0aXRsZTogQXBwIHRhcmdldAogICAgICB0eXBl\
OiBlbnVtCiAgICAgIGRlZmF1bHQ6ICJBbmRyb2lkIgogICAgICBlbnVtOiBbIkFuZHJvaWQiXQog\
ICAgLSBuYW1lOiBnb29nbGVrZXkKICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAgdGl0bGU6IFlv\
dXIgR29vZ2xlIEtleSBmb3IgRmlyZWJhc2UgQ2xvdWQgTWVzc2FnaW5nCiAgICAgIHR5cGU6IHN0\
cmluZwogICAgLSBuYW1lOiBwcm9qZWN0TnVtYmVyCiAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAg\
IHRpdGxlOiBZb3VyIEZDTSBQcm9qZWN0IE51bWJlciwgbmVlZGVkIG9uIHRoZSBtb2JpbGUgY2xp\
ZW50IGZvciBjb25uZWN0aW5nIHdpdGggRkNNCiAgICAgIHR5cGU6IHN0cmluZwo="

COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
COPY vars /opt/ansible/vars
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
