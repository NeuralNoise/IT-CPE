#
# Cookbook Name:: cpe_node_customizations
# Recipe:: default
#
# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2
#
# Copyright (c) 2016-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the BSD-style license found in the
# LICENSE file in the root directory of this source tree. An additional grant
# of patent rights can be found in the PATENTS file in the same directory.
#

begin
  include_recipe "cpe_node_customizations::#{node.name}"
rescue Chef::Exceptions::RecipeNotFound
rescue Exception => e
  Chef::Log.warn(
    "Error in cpe_node_customizations::#{node.name} \n" +
    "#{e.message} \n" +
    "#{e.backtrace.inspect} \n"
  )
end
