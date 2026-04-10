# 📑 Guia para construção de um Dashboard de Vendas


### 📊 Tabela 1 — Visão Geral (KPIs)
**Insight:** 

👉 Visão geral dos pontos principais das vendas.

**Configuração:**
1.  **Plan** para a área de **Linhas**.
2.  **Subscriber ID** para **Valores** e configure como `Contagem`.
3.  **Total Value** para **Valores** e configure como `Soma`.
4.  **Total Value** novamente para **Valores** e configure como `Média`.

**Resultado Esperado:**


| Indicador | Valor |
| :--- | :--- |
| **Total de Assinantes** | 295 |
| **Receita Total** | R$ 7.633,00 |
| **Ticket Médio Geral** | R$ 25,87 |

---

### 📊 Tabela 2 — Performance por Plano
**Insight:** 

👉 Desempenho por Plano de Assinatura,  qual plano gera mais dinheiro e qual tem mais clientes.

**Configuração:**
1.  **Plan** para a área de **Linhas**.
2.  **Subscriber ID** para **Valores** (Configurar como `Contagem`).
3.  **Total Value** para **Valores** (Configurar como `Soma`).
4.  **Total Value** para **Valores** (Configurar como `Média`).

**UMA TABELA APAR CADA RESULTADO**

**Resultado Esperado:**

| Plano | Assinantes |
| :--- | :--- |
| **Ultimate** | 98 |
| **Standard** | 96 |
| **Core** | 101 |


| Plano | Receita Total |
| :--- | :--- |
| **Ultimate**| R$ 5.388,00 |
| **Standard**| R$ 1.801,00 |
| **Core**| R$ 444,00 |


| Plano | Assinantes |
| :--- | :--- |
| **Ultimate** | R$ 54,98 |
| **Standard** | R$ 18,76 |
| **Core** | R$ 4,40 |


---

### 📊 Tabela 3 — Taxa de Renovação Automática
**Insight:** 

👉 Quantos clientes renovam automaticamente 

**Configuração**
1.  Arraste o campo **Auto Renewal** para a área de **Linhas**.
2.  Arraste o campo **Subscriber ID** para a área de **Valores** (Configurar como `Contagem`).
3.  Clique com o botão direito sobre o número na tabela -> **Mostrar Valores Como** -> **% do Total Geral**.

**Resultado Esperado:**


| Auto Renewal | Percentual (%) |
| :--- | :--- |
| **Yes** | 50% |
| **No** | 50% |

---

### 📊 Tabela 4 — Receita por Season Pass
**Insight:** 

👉 Quanto cada Season Pass gera de receita 

**Configuração:**
1.  Mantenha a área de **Linhas** vazia.
2.  Arraste o campo **EA Play Season Pass Price** para a área de **Valores** (Configurar como `Soma`).
3.  Arraste o campo **Minecraft Season Pass Price** para a área de **Valores** (Configurar como `Soma`).

**Resultado Esperado:**


| Produto / Season Pass | Receita Total |
| :--- | :--- |
| **EA Play Season Pass** | R$ 2.940,00 |
| **Minecraft Season Pass** | R$ 3.880,00 |

---

### 🧠 Estruturando o Dashboard
*   ✅**Cards (Topo):** Use os dados da **Tabela 1**.
*   📊**Gráfico de Colunas:** Use a Receita Total por Plano da **Tabela 2**.
*   🥧**Gráfico de Rosca/Pizza:** Use o percentual da **Tabela 3**.
*   📉**Gráfico de Barras:** Use o comparativo de preços da **Tabela 4**.
