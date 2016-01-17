#include "authorpendingtablemodel.h"

#include <QDialog>
#include <QHBoxLayout>
#include <QFont>

AuthorPendingTableModel::AuthorPendingTableModel(QObject *parent) :
    QAbstractTableModel(parent)
{
}

int AuthorPendingTableModel::rowCount(const QModelIndex & /*parent*/) const
{
   return pending.size();
}

int AuthorPendingTableModel::columnCount(const QModelIndex & /*parent*/) const
{
    return 18;
}

QVariant AuthorPendingTableModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid()) {
        return false;
    }

    int row = index.row();
    int col = index.column();

    switch(role) {
    case Qt::DisplayRole:
    {
        json_spirit::Array pendingCreation = pending.at(row);

        /* Display data shared between decisions and markets */

        // Type
        std::string type = json_spirit::write_string(pendingCreation.back(), true);
        if (col == 0) {
            return QString::fromStdString(type);
        }

        // Address
        if (col == 1) {
            std::string address = json_spirit::write_string(pendingCreation.front(), true);
            return QString::fromStdString(address);
        }

        // Fee
        if (col == 2) {
            return "0.02"; // Dummy temp
        }

        /* Display data unique to decisions */

        if (type == "\"decision\"") {
            // Fill blank spots (columns 8 - 17)
            if (col >= 8 && col <= 17) {
                return ("NA");
            }

            // Branch ID
            if (col == 3) {
                std::string branchID = json_spirit::write_string(pendingCreation.at(1), true);
                return QString::fromStdString(branchID);
            }

            // Prompt
            if (col == 4) {
                std::string prompt = json_spirit::write_string(pendingCreation.at(2), true);
                return QString::fromStdString(prompt);
            }

            // Event Over By
            if (col == 5) {
                int eventOverBy = pendingCreation.at(3).get_int();
                return eventOverBy;
            }

            // Answer Optionality
            if (col == 6) {
                bool answerOptionality = pendingCreation.at(4).get_bool();
                return answerOptionality;
            }

            // Is Scaled?
            if (col == 7) {
                bool scaled = pendingCreation.at(5).get_bool();
                return scaled;
            }
        }

        /* Display data unique to markets */

        if (type == "\"market\"") {
            // Fill blank spots (3 - 7)
            if (col >= 3 && col <= 7) {
                return QString("NA");
            }

            // Decision ID
            if (col == 8) {
                std::string decisionID = json_spirit::write_string(pendingCreation.at(1), true);
                return QString::fromStdString(decisionID);
            }

            // Liquidity Factor / B
            if (col == 9) {
                double B = pendingCreation.at(2).get_real();
                return B;
            }

            // Trading Fee
            if (col == 10) {
                double tradingFee = pendingCreation.at(3).get_real();
                return tradingFee;
            }

            // Max Commission
            if (col == 11) {
                double maxCommission = pendingCreation.at(4).get_real();
                return maxCommission;
            }

            // Title
            if (col == 12) {
                std::string title = json_spirit::write_string(pendingCreation.at(5), true);
                return QString::fromStdString(title);
            }

            // Description
            if (col == 13) {
                std::string description = json_spirit::write_string(pendingCreation.at(6), true);
                return QString::fromStdString(description);
            }

            // Tags
            if (col == 14) {
                std::string tags = json_spirit::write_string(pendingCreation.at(7), true);
                return QString::fromStdString(tags);
            }

            // Maturation
            if (col == 15) {
                int maturation = pendingCreation.at(8).get_int();
                return maturation;
            }

            // txPoWh
            if (col == 16) {
                int txPoWh = pendingCreation.at(9).get_int();
                return txPoWh;
            }

            // txPoWd
            if (col == 17) {
                int txPoWd = pendingCreation.at(10).get_int();
                return txPoWd;
            }
        }

        break;
    }
    case Qt::FontRole:
        if (col == 0) // Type is bold
        {
            QFont boldFont;
            boldFont.setBold(true);
            return boldFont;
        }
        break;
    case Qt::BackgroundRole:
        break;
    case Qt::TextAlignmentRole:
        break;
    case Qt::CheckStateRole:
        break;
    }

    return QVariant();
}

QVariant AuthorPendingTableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (role == Qt::DisplayRole)
    {
        if (orientation == Qt::Horizontal) {
            switch (section)
            {
            case 0:
                return QString("Type");
            case 1:
                return QString("Address");
            case 2:
                return QString("Fee");
            case 3:
                return QString("Branch");
            case 4:
                return QString("Prompt");
            case 5:
                return QString("eventOverBy");
            case 6:
                return QString("Answer Optional");
            case 7:
                return QString("Scaled");
            case 8:
                return QString("Decision");
            case 9:
                return QString("B");
            case 10:
                return QString("Trading Fee");
            case 11:
                return QString("Max Commission");
            case 12:
                return QString("Title");
            case 13:
                return QString("Description");
            case 14:
                return QString("Tags");
            case 15:
                return QString("Maturation");
            case 16:
                return QString("txPoWh");
            case 17:
                return QString("txPoWh");
            }
        }
    }
    return QVariant();
}

void AuthorPendingTableModel::editCombo(const QModelIndex &index)
{
    comboCreationWidget = new ComboCreationWidget;

    QHBoxLayout *hbox = new QHBoxLayout;
    hbox->addWidget(comboCreationWidget);

    connect(comboCreationWidget, SIGNAL(updatedComboArray(json_spirit::Array)),
            this, SLOT(receiveUpdatedCombo(json_spirit::Array)));

    QDialog *dialog = new QDialog;
    dialog->setLayout(hbox);
    dialog->show();
}

void AuthorPendingTableModel::editDecision(const QModelIndex &index)
{
    DecisionCreationWidget *decisionCreationWidget = new DecisionCreationWidget;
    QHBoxLayout *hbox = new QHBoxLayout;
    hbox->addWidget(decisionCreationWidget);

    connect(decisionCreationWidget, SIGNAL(updatedDecisionArray(json_spirit::Array)),
            this, SLOT(receiveUpdatedDecision(json_spirit::Array)));

    json_spirit::Array decisionToEdit = pending.at(index.row());
    decisionToEdit.push_back(index.row());
    decisionCreationWidget->editArray(decisionToEdit);

    QDialog *dialog = new QDialog;
    dialog->setLayout(hbox);
    dialog->setWindowTitle("Edit Decision");
    dialog->show();
}

void AuthorPendingTableModel::editDecisionMarket(const QModelIndex &index)
{
    DecisionMarketCreationWidget *marketCreationWidget = new DecisionMarketCreationWidget;
    QHBoxLayout *hbox = new QHBoxLayout;
    hbox->addWidget(marketCreationWidget);

    connect(marketCreationWidget, SIGNAL(updatedDecisionMarketArray(json_spirit::Array)),
            this, SLOT(receiveUpdatedDecisionMarket(json_spirit::Array)));

    json_spirit::Array marketToEdit = pending.at(index.row());
    marketToEdit.push_back(index.row());
    marketCreationWidget->editArray(marketToEdit);

    QDialog *dialog = new QDialog;
    dialog->setLayout(hbox);
    dialog->setWindowTitle("Edit Market");
    dialog->show();
}

void AuthorPendingTableModel::on_tableView_doubleClicked(const QModelIndex &index)
{
    // Figure out what we are editing, and open proper dialog
    json_spirit::Array itemClicked = pending.at(index.row());
    std::string itemType = json_spirit::write_string(itemClicked.back(), true);

    if (itemType == "\"combo\"") {
        editCombo(index);
    } else if (itemType == "\"decision\"") {
        editDecision(index);
    } else if (itemType == "\"market\"") {
        editDecisionMarket(index);
    } else {
        return;
    }
}

void AuthorPendingTableModel::receivePendingCombo(json_spirit::Array array)
{
    pending.push_back(array);
}

void AuthorPendingTableModel::receivePendingDecision(json_spirit::Array array)
{
    int row = pending.size();
    beginInsertRows(QModelIndex(), row, row);

    pending.push_back(array);

    endInsertRows();
}

void AuthorPendingTableModel::receivePendingDecisionMarket(json_spirit::Array array)
{
    int row = pending.size();
    beginInsertRows(QModelIndex(), row, row);

    pending.push_back(array);

    endInsertRows();
}

void AuthorPendingTableModel::finalize()
{
    if (pending.empty()) {
        QString error = "There is nothing to finalize, create some decisions or markets!\n";
        emit finalizeError(error);
    }

    // Finalize the pending creations
    for (int i = pending.size(); i > 0; i--) {
        // Grab creation parameters and type
        json_spirit::Array params = pending.at(i-1);
        std::string type = json_spirit::write_string(params.back(), true);

        // Remove type from parameters
        params.pop_back();

        extern json_spirit::Value createdecision(const json_spirit::Array &params, bool fHelp);
        extern json_spirit::Value createmarket(const json_spirit::Array &params, bool fHelp);

        json_spirit::Value result;

        // Try to finalize pending creations
        try {
            if (type == "\"combo\"") {

            } else if (type == "\"decision\"") {
                result = createdecision(params, false);
            } else if (type == "\"market\"") {
                result = createmarket(params, false);
            }
        } catch (const std::runtime_error &error) {
            QString errorText = QString::fromStdString(error.what());
            emit finalizeError(errorText);
        } catch (const std::exception &exception) {
            QString exceptionText = QString::fromStdString(exception.what());
            emit finalizeError(exceptionText);
        } catch (json_spirit::Object &object) {
            result = object;
        }

        // Check the result
        try {
            // Get result pairs
            json_spirit::Object resultObject = result.get_obj();
            json_spirit::Pair codePair = resultObject[0];
            json_spirit::Pair messagePair = resultObject[1];

            // If error, get error code and message
            if (codePair.name_ == "code") {
                int code = codePair.value_.get_int();
                if (code < 0) {
                    QString messageText = "Error creating #";
                    messageText.append(QString::number(i)); // row #
                    messageText.append("\n");
                    messageText.append(QString::fromStdString(messagePair.value_.get_str()));
                    emit finalizeError(messageText);
                }
            }

            // If success, get txid and decision or market id
            if (codePair.name_ == "txid" ) {
                std::string txid = codePair.value_.get_str();
                // Decision or market?
                if (messagePair.name_ == "decisionid") {
                    // Remove finalized decisions from the pending model
                    beginRemoveRows(QModelIndex(), pending.size()-1, pending.size()-1);
                    pending.removeAt(i-1);
                    endRemoveRows();
                } else if (messagePair.name_ == "marketid") {
                    // Remove finalized markets from the pending model
                    beginRemoveRows(QModelIndex(), pending.size()-1, pending.size()-1);
                    pending.removeAt(i-1);
                    endRemoveRows();
                }
            }
        } catch (const std::runtime_error &error) {
            QString errorText = QString::fromStdString(error.what());
            emit finalizeError(errorText);
        } catch (const std::exception &exception) {
            QString exceptionText = QString::fromStdString(exception.what());
            emit finalizeError(exceptionText);
        }
    }
}

void AuthorPendingTableModel::receiveUpdatedCombo(json_spirit::Array array)
{

}

void AuthorPendingTableModel::receiveUpdatedDecision(json_spirit::Array array)
{
    if (!array.size() >= 8) return;
    int index = array.back().get_int();
    array.pop_back();

    pending.replace(index, array);
}

void AuthorPendingTableModel::receiveUpdatedDecisionMarket(json_spirit::Array array)
{
    if(!array.size() == 13) return;
    int index = array.back().get_int();
    array.pop_back();

    pending.replace(index, array);
}
