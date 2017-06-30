/*
 * Copyright (c) 2017. tangzx(love.tangzx@qq.com)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.tang.intellij.lua.stubs.types

import com.intellij.psi.stubs.*
import com.tang.intellij.lua.lang.LuaLanguage
import com.tang.intellij.lua.psi.LuaTableExpr
import com.tang.intellij.lua.psi.impl.LuaTableExprImpl
import com.tang.intellij.lua.stubs.LuaTableStub
import com.tang.intellij.lua.stubs.impl.LuaTableStubImpl

import java.io.IOException

/**
 * table
 * Created by tangzx on 2017/1/12.
 */
class LuaTableType : IStubElementType<LuaTableStub, LuaTableExpr>("Table", LuaLanguage.INSTANCE) {

    override fun createPsi(luaTableStub: LuaTableStub) = LuaTableExprImpl(luaTableStub, this)

    override fun createStub(tableConstructor: LuaTableExpr, stubElement: StubElement<*>): LuaTableStub {
        return LuaTableStubImpl(stubElement, this)
    }

    override fun getExternalId() = "lua.table"

    @Throws(IOException::class)
    override fun serialize(luaTableStub: LuaTableStub, stubOutputStream: StubOutputStream) {

    }

    @Throws(IOException::class)
    override fun deserialize(stubInputStream: StubInputStream, stubElement: StubElement<*>): LuaTableStub {
        return LuaTableStubImpl(stubElement, this)
    }

    override fun indexStub(luaTableStub: LuaTableStub, indexSink: IndexSink) {}
}
