# -*- mode: python ; coding: utf-8 -*-


a = Analysis(
    ['src\\ui.py'],
    pathex=['src'],
    binaries=[('C:\\Users\\tonyw\\Desktop\\YouTube DL\\youtube-downloader\\ffmpeg\\ffmpeg.exe', 'ffmpeg.exe')],
    datas=[('src\\icons', 'icons')],
    hiddenimports=['customtkinter', 'CTkMessagebox', 'ffmpeg', 'rich', 'googleapiclient.discovery', 'googleapiclient.errors', 'googleapiclient.http'],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    noarchive=False,
    optimize=0,
)
pyz = PYZ(a.pure)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.datas,
    [],
    name='YouTube Downloader',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    upx_exclude=[],
    runtime_tmpdir=None,
    console=False,
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
    icon=['src\\icons\\yt-multi-size.ico'],
)
