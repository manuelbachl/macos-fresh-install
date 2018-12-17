#
# Texts for help pages
#
HELPGENERAL="
${ORANGE}Usage:${NC}
  ${CLINAME} [command] [arguments]
"

HELPHELP="
${ORANGE}help${NC}
  ${GREEN}help${NC}                        Lists all available commands (this page).
  ${GREEN}help:faq${NC}                    Lists 'FAQ' related commands.
  ${GREEN}help:platform${NC}               Lists 'platform.sh' related commands.
  ${GREEN}help:backup${NC}                 Lists 'backup' related commands.
  ${GREEN}help:version${NC}                Lists 'version checking' related commands.
  ${GREEN}help:health${NC}                 Lists 'system health' related commands.
  ${GREEN}help:service${NC}                Lists 'service' related commands.
  ${GREEN}help:ssl${NC}                    Lists 'SSL' related commands.
  ${GREEN}help:cron${NC}                   Lists 'cronjob' related commands.
  ${GREEN}help:host${NC}                   Lists 'host configuration' related commands.
  ${GREEN}help:cache${NC}                  Lists 'varnish cache' related commands.
"

HELPFAQ="
${ORANGE}faq${NC}
  ${GREEN}faq${NC}                         Shows all frequently asked questions.
  ${GREEN}faq:platform${NC}                Shows frequently asked questions about 'platform.sh'.
  ${GREEN}faq:backup${NC}                  Shows frequently asked questions about 'backup'.
  ${GREEN}faq:version${NC}                 Shows frequently asked questions about 'version checking'.
  ${GREEN}faq:health${NC}                  Shows frequently asked questions about 'system health'.
  ${GREEN}faq:service${NC}                 Shows frequently asked questions about 'service'.
  ${GREEN}faq:ssl${NC}                     Shows frequently asked questions about 'SSL'.
  ${GREEN}faq:cron${NC}                    Shows frequently asked questions about 'cronjob'.
  ${GREEN}faq:host${NC}                    Shows frequently asked questions about 'host configuration'.
  ${GREEN}faq:cache${NC}                   Shows frequently asked questions about 'varnish cache'.
"

HELPCLI="
${ORANGE}cli${NC}
  ${GREEN}cli:update${NC}                  Updates ${CLINAME}.
  ${GREEN}cli:update:check${NC}            Checks for ${CLINAME} updates.
"

HELPPLATFORM="
${ORANGE}platform${NC}
  ${GREEN}platform:sync${NC}               Synchronize database, fileadmin and brochures from platform.sh (wk25pmckylrfq:master).
  ${GREEN}platform:sync:database${NC}      Synchronize database from platform.sh (wk25pmckylrfq:master).
  ${GREEN}platform:sync:fileadmin${NC}     Synchronize fileadmin from platform.sh (wk25pmckylrfq:master).
  ${GREEN}platform:sync:brochures${NC}     Synchronize brochures from platform.sh (wk25pmckylrfq:master).
"

HELPBACKUP="
${ORANGE}backup${NC}
  ${GREEN}backup:create${NC}               Backups database, fileadmin and brochures. Also backups server configuration to the
                              following git repository:
                              ${REPOSITORY}
  ${GREEN}backup:create:database${NC}      Backups database.
  ${GREEN}backup:create:fileadmin${NC}     Backups fileadmin.
  ${GREEN}backup:create:brochures${NC}     Backups brochures.
  ${GREEN}backup:create:config${NC}        Backups server configuration to the following git repository:
                              ${REPOSITORY}
  ${GREEN}backup:list${NC}                 Prints a list of all available backups.
  ${GREEN}backup:list:database${NC}        Prints a list of all available database backups.
  ${GREEN}backup:list:fileadmin${NC}       Prints a list of all available fileadmin backups.
  ${GREEN}backup:list:brochures${NC}       Prints a list of all available brochures backups.
  ${GREEN}backup:list:config${NC}          Prints a list of all available server config backups.
  ${GREEN}backup:delete${NC} $(tput bold)backup$(tput sgr0)        Deletes given backup.
"

HELPVERSION="
${ORANGE}version${NC}
  ${GREEN}version${NC}                     Prints information about installed versions of different tools.
  ${GREEN}version:nginx${NC}               Prints installed nginx version.
  ${GREEN}version:varnish${NC}             Prints installed varnish, varnishhist, varnishstat and varnishlog versions.
  ${GREEN}version:php${NC}                 Prints installed php version.
  ${GREEN}version:mysql${NC}               Prints installed mysql version.
  ${GREEN}version:node${NC}                Prints installed node.js version.
  ${GREEN}version:npm${NC}                 Prints installed npm version.
"

HELPHEALTH="
${ORANGE}health${NC}
  ${GREEN}health${NC}                      Checks syntax in nginx and varnish config and status of nginx, Varnish, MySQL and PHP
                              services.
  ${GREEN}health:nginx${NC}                Check status of nginx service and syntax of its config.
  ${GREEN}health:nginx:service${NC}        Check status of nginx service.
  ${GREEN}health:nginx:config${NC}         Check syntax of nginx config.
  ${GREEN}health:varnish${NC}              Check status of Varnish service and syntax of its config.
  ${GREEN}health:varnish:service${NC}      Check status of Varnish service.
  ${GREEN}health:varnish:config${NC}       Check syntax of Varnish config.
  ${GREEN}health:varnish:curl${NC}         Print headers from cURL to backend.
  ${GREEN}health:varnish:probe${NC}        Gives some debug output from Varnish backend probes.
  ${GREEN}health:varnish:backends${NC}     Lists available server backends configured in Varnish config.
  ${GREEN}health:mysql${NC}                Check status of MySQL service.
  ${GREEN}health:mysql:service${NC}        Check status of MySQL service.
  ${GREEN}health:php${NC}                  Check status of PHP service.
  ${GREEN}health:php:service${NC}          Check status of PHP service.
"

HELPSERVICE="
${ORANGE}service${NC}
  ${GREEN}service:start:all${NC}           Starts nginx, Varnish, MySQL and PHP services.
  ${GREEN}service:start:nginx${NC}         Checks syntax in nginx config. Starts nginx service when there are no syntax errors.
  ${GREEN}service:start:varnish${NC}       Checks syntax in Varnish config. Starts Varnish service when there are no syntax errors.
  ${GREEN}service:start:mysql${NC}         Starts MySQL service.
  ${GREEN}service:start:php${NC}           Starts PHP service.
  ${GREEN}service:restart:all${NC}         Checks syntax in nginx and Varnish config. Restarts nginx, Varnish, MySQL and PHP services.
  ${GREEN}service:restart:nginx${NC}       Checks syntax in nginx config. Restarts nginx service when there are no syntax errors.
  ${GREEN}service:restart:varnish${NC}     Checks syntax in Varnish config. Restarts Varnish service when there are no syntax errors.
  ${GREEN}service:restart:mysql${NC}       Restarts MySQL service.
  ${GREEN}service:restart:php${NC}         Restarts PHP service.
  ${GREEN}service:reload:all${NC}          Checks syntax in nginx and Varnish config. Reloads nginx, Varnish, MySQL and PHP config
                              when there are no syntax errors.
  ${GREEN}service:reload:nginx${NC}        Checks syntax in nginx config. Reloads nginx config when there are no syntax errors.
  ${GREEN}service:reload:varnish${NC}      Checks syntax in Varnish config. Reloads Varnish config when there are no syntax errors.
  ${GREEN}service:reload:mysql${NC}        Reloads MySQL config.
  ${GREEN}service:reload:php${NC}          Reloads PHP config.
  ${GREEN}service:stop:all${NC}            Stops nginx, Varnish, MySQL and PHP services.
  ${GREEN}service:stop:nginx${NC}          Stops nginx service.
  ${GREEN}service:stop:varnish${NC}        Stops Varnish service.
  ${GREEN}service:stop:mysql${NC}          Stops MySQL service.
  ${GREEN}service:stop:php${NC}            Stops PHP service.
"

HELPSSL="
${ORANGE}ssl${NC}
  ${GREEN}ssl:list${NC}                    List all available certificates.
  ${GREEN}ssl:check${NC} $(tput bold)domain$(tput sgr0)            Check Let's Encrypt certificate status for given domain.
  ${GREEN}ssl:generate${NC} $(tput bold)domain$(tput sgr0)         Generate new Let's Encrypt certificate.
  ${GREEN}ssl:renew${NC}                   Renews all Let's Encrypt certificates (if necessary). There is also a cronjob doing this.
"

HELPCRON="
${ORANGE}cron${NC}
  ${GREEN}cron:list${NC}                   List all available cronjobs. ${ORANGE}${ERROR} To be defined${NC}
  ${GREEN}cron:add${NC}                    Adds cronjob. ${ORANGE}${ERROR} To be defined${NC}
"

HELPHOST="
${ORANGE}host${NC}
  ${GREEN}host:list${NC}                   Prints a table of all configured hosts. Also shows whether hosts are enabled or not and
                              their SSL status.
  ${GREEN}host:status${NC} $(tput bold)domain$(tput sgr0)          Checks the status of the given domain.
  ${GREEN}host:add${NC} $(tput bold)domain$(tput sgr0)             Adds a new domain to nginx and to varnish. Also backups all config to the following git
                              repository:
                              ${REPOSITORY}
  ${GREEN}host:enable${NC} $(tput bold)domain$(tput sgr0)          Enables the given domain after success fully proceeding different health checks.
  ${GREEN}host:disable${NC} $(tput bold)domain$(tput sgr0)         Disables the given domain.
"

HELPCACHE="
${ORANGE}cache${NC}
  ${GREEN}cache:history${NC}               Shows cache history chart.
  ${GREEN}cache:stats${NC}                 Shows cache statistics.
  ${GREEN}cache:top:requests${NC}          List URLs commonly being asked for by the client.
  ${GREEN}cache:top:berequests${NC}        List most common requests to the backend servers.
  ${GREEN}cache:top:agents${NC}            Lists what user agents are the most common from the clients and what user agents are commonly
                              accessing the backend servers. Compare those information to find clients that are commonly
                              causing misses.
  ${GREEN}cache:top:cookies${NC}           Lists the cookies values are the most commonly sent to varnish.
  ${GREEN}cache:log${NC}                   Starts varnishlog.
  ${GREEN}cache:log:backend${NC}           Starts varnishlog but only display transactions and log records from backend communication.
  ${GREEN}cache:log:client${NC}            Starts varnishlog but only display transactions and log records from client communication.
  ${GREEN}cache:purge${NC}                 Purges the whole varnish cache (use with caution!). ${ORANGE}${ERROR} To be finalized${NC}
  ${GREEN}cache:purge${NC} $(tput bold)url$(tput sgr0)             Purges the cache for the given url. ${ORANGE}${ERROR} To be finalized${NC}
"
