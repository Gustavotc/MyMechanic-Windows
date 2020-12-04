package report;

import java.sql.Connection;
import java.util.HashMap;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.view.JasperViewer;

public class Relatorio {

    //Produz um relatório a partir de uma Fonte de Dados
    //definida na Conexão(Connection)
    public void exibir(Connection con, String relatorio){
        exibir(con,relatorio, null);
    }
    
    //Produz um relatório com parâmetros fornecidos pelo Usuário.
    public void exibir(Connection con, String relatorio,
            HashMap parametros){
        
        try {
            //Passo 1: carregar o layout do relatório
            JasperDesign jd = JRXmlLoader.load(
                                getClass().getResourceAsStream("/report/"+relatorio));
            
            //Passo 2: Complilar o relatório (JRXml -> JASPER)
            JasperReport jr = JasperCompileManager.compileReport(jd);
            
            //Passo 3: Preencher o relatório com os dados
            JasperPrint jp = JasperFillManager.fillReport(jr, parametros,con);
            
            //Passo 4: Visualizar o relatório na tela
            JasperViewer jv = new JasperViewer(jp,false);
            jv.setVisible(true);
            
            //Gerar o relatório em PDF e HTML
//            JasperExportManager.exportReportToPdfFile(jp,"c:\\relatorio.pdf");
//            JasperExportManager.exportReportToHtmlFile(jp,"c:\\relatorio.pdf");
            
        } catch (JRException e) {
            System.out.println("ERRO: " + e.getMessage());
        }
    }
}