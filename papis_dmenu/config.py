"""
dmenu gui
*********

See `dmenu <https://tools.suckless.org/dmenu/>`_ and the python wrapper
`here <http://dmenu.readthedocs.io/en/latest/>`_ for more information.
You will need to install the latter to make use of this function,

::

    pip3 install dmenu


.. papis-config:: lines
    :section: dmenu-gui

.. papis-config:: case_insensitive
    :section: dmenu-gui

.. papis-config:: bottom
    :section: dmenu-gui

.. papis-config:: font
    :section: dmenu-gui

.. papis-config:: background
    :section: dmenu-gui

.. papis-config:: foreground
    :section: dmenu-gui

.. papis-config:: background_selected
    :section: dmenu-gui

.. papis-config:: foreground_selected
    :section: dmenu-gui

.. papis-config:: header-format
    :section: dmenu-gui

    This is not set per default, and it will default to
    the general header-format if not set.


"""

import papis.config

configuration_settings = {
    "dmenu-gui": {
        "lines": 30,
        "case_insensitive": True,
        "bottom": True,
        "font": 'monospace-14',
        "background": '#000000',
        "foreground": '#55ff55',
        "background_selected": '#005500',
        "foreground_selected": '#f0f0f0',
        "header-format": '{doc[year]:<4.4}| {doc[title]:<80.80}|:| {doc[author]}',
    }
}

def register_default_settings():
    papis.config.register_default_settings(configuration_settings)