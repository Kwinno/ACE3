---
layout: wiki
title: Modules
description: Framework for module handling.
group: feature
category: general
parent: wiki
mod: ace
version:
  major: 3
  minor: 0
  patch: 0
---

## 1. Overview

This is taking care of module initialization. It lets us ensure that modules placed in the editor run when they are supposed to.

 **DO NOT REMOVE THIS PBO**. It is depended upon by a large collection of ACE3 components / PBOs. Removing it will break their functionality.

## 2. Dependencies

{% include dependencies_list.md component="modules" %}

## 3. Usage

For technical usage and instructions, please refer to our [framework documentation about the module component] ({{site.baseUrl}}/wiki/framework/modules-framework.html).
