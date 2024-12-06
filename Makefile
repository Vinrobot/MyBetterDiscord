OUTPUT_DIR=output
PLUGINS_DIR=$(OUTPUT_DIR)/plugins

all:

copy: DoNotTrack HideDisabledEmojis DiscordFreeEmojis64px

DoNotTrack: $(PLUGINS_DIR)/DoNotTrack/DoNotTrack.plugin.js
$(PLUGINS_DIR)/DoNotTrack/DoNotTrack.plugin.js: submodules/BetterDiscordAddons/Plugins/DoNotTrack/DoNotTrack.plugin.js
	mkdir -p $(dir $@)
	cp $< $@

HideDisabledEmojis: $(PLUGINS_DIR)/HideDisabledEmojis/HideDisabledEmojis.plugin.js
$(PLUGINS_DIR)/HideDisabledEmojis/HideDisabledEmojis.plugin.js: submodules/BetterDiscordAddons/Plugins/HideDisabledEmojis/HideDisabledEmojis.plugin.js
	mkdir -p $(dir $@)
	cp $< $@

DiscordFreeEmojis64px: $(PLUGINS_DIR)/DiscordFreeEmojis64px/DiscordFreeEmojis64px.plugin.js
$(PLUGINS_DIR)/DiscordFreeEmojis64px/DiscordFreeEmojis64px.plugin.js: submodules/DiscordFreeEmojis/DiscordFreeEmojis64px.plugin.js
	mkdir -p $(dir $@)
	cp $< $@

clean:
	rm -rf $(OUTPUT_DIR)
