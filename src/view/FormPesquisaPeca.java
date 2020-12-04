package view;

import controller.FornecedorDAO;
import controller.PecaDAO;
import java.util.List;
import javax.swing.table.DefaultTableModel;
import model.Fornecedor;
import model.Peca;

/*
 * @author Gustavo
 */

public class FormPesquisaPeca extends javax.swing.JInternalFrame {

    /*
     * Creates new form FormPesquisarCliente
     */
    
    public FormPesquisaPeca() {
        initComponents();
        
        this.setTitle("Pesquisa de Peça");
        this.setResizable(false);
        this.setMaximizable(false);
        this.setIconifiable(false);
        this.setClosable(true);
        configurarTabela();
    }
    
    private void configurarTabela() {
        DefaultTableModel m = new DefaultTableModel() {
            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        m.addColumn("Id");
        m.addColumn("Nome");
        m.addColumn("Quantidade");
        m.addColumn("Vlr. Unitário");
        m.addColumn("Ativo");
        tabResultado.setModel(m);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lblNome = new javax.swing.JLabel();
        txtNome = new javax.swing.JTextField();
        scpPaneResultado = new javax.swing.JScrollPane();
        tabResultado = new javax.swing.JTable();

        lblNome.setFont(new java.awt.Font("Tahoma", 0, 24)); // NOI18N
        lblNome.setText("Pesquisar por nome");

        txtNome.setFont(new java.awt.Font("Tahoma", 0, 36)); // NOI18N
        txtNome.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyReleased(java.awt.event.KeyEvent evt) {
                txtNomeKeyReleased(evt);
            }
        });

        tabResultado.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        tabResultado.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        tabResultado.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                tabResultadoMouseClicked(evt);
            }
        });
        scpPaneResultado.setViewportView(tabResultado);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(lblNome)
                    .addComponent(scpPaneResultado)
                    .addComponent(txtNome, javax.swing.GroupLayout.PREFERRED_SIZE, 841, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(24, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(19, 19, 19)
                .addComponent(lblNome)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtNome, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(scpPaneResultado, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(22, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    //Método para pesquisar Peça por nome
    private void txtNomeKeyReleased(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtNomeKeyReleased

        String chave = txtNome.getText();
        List<Object> lista = new PecaDAO().pesquisarPorNome(chave);

        if (lista != null) {
            configurarTabela();
            DefaultTableModel m = (DefaultTableModel) tabResultado.getModel();

            for (Object obj : lista) {
                Peca p = (Peca) obj;
                m.addRow(new Object[]{
                    p.getId(),
                    p.getNome(),
                    p.getQuantidade(),
                    p.getValorUnitario(),
                    p.getFgAtivo()==1 ? "Sim" : "Não"
                });
            }
            tabResultado.setModel(m);
        }
    }//GEN-LAST:event_txtNomeKeyReleased

    //Método para editar Peça
    private void tabResultadoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_tabResultadoMouseClicked

        //Clique duplo do mouse
        if (evt.getClickCount() == 2) {
            
            Peca p = new Peca();

            //Dados do Cliente selecionado pelo usuário
            int linha = tabResultado.getSelectedRow();    
            p.setId(Integer.parseInt(tabResultado.getValueAt(linha, 0).toString()));
            p.setNome(tabResultado.getValueAt(linha, 1).toString());
            p.setQuantidade(Integer.parseInt(tabResultado.getValueAt(linha, 2).toString()));
            p.setValorUnitario(Double.parseDouble(tabResultado.getValueAt(linha, 3).toString()));
            p.setFgAtivo((tabResultado.getValueAt(linha, 4) == "Sim" ? 1:0));

            //Abrir formulário de Cadastro
            FormCadastroPeca pe = new FormCadastroPeca(p);
            this.getDesktopPane().add(pe);
            pe.setVisible(true);
            this.dispose();
        }
    }//GEN-LAST:event_tabResultadoMouseClicked


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel lblNome;
    private javax.swing.JScrollPane scpPaneResultado;
    private javax.swing.JTable tabResultado;
    private javax.swing.JTextField txtNome;
    // End of variables declaration//GEN-END:variables
}
