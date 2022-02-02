namespace AutoLot.Mvc.TagHelpers;

public class ItemDetailsTagHelper : ItemLinkTagHelperBase
{
    public ItemDetailsTagHelper(IActionContextAccessor contextAccessor, IUrlHelperFactory urlHelperFactory) : base(contextAccessor, urlHelperFactory)
    {
        ActionName = nameof(CarsController.DetailsAsync).RemoveAsyncSuffix();
    }

    public override void Process(TagHelperContext context, TagHelperOutput output)
    {
        //<a asp-action="Details" asp-route-id="@item.Id" class="text-info">Details <i class="fas fa-info-circle"></i></a>
        BuildContent(output, "text-info", "Details", "info-circle");
    }
}